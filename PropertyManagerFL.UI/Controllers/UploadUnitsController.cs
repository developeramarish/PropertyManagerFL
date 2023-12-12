﻿using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http.Headers;

namespace PropertyManagerFL.UI.Controllers
{
    [Route("api/[controller]")]
    public class UploadUnitsController : Controller
    {
        private readonly IWebHostEnvironment _hostingEnvironment;

        public UploadUnitsController(IWebHostEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment ?? throw new ArgumentNullException(nameof(hostingEnvironment));
        }

        [HttpPost("[action]")]
        public IActionResult Save(IList<IFormFile> uploadFiles)
        {
            if (uploadFiles == null || uploadFiles.Count == 0)
            {
                return BadRequest("No files specified for upload.");
            }

            long size = 0;
            try
            {
                foreach (var file in uploadFiles)
                {
                    if (file == null || file.Length == 0)
                    {
                        return BadRequest("Invalid file detected.");
                    }

                    var filename = ContentDispositionHeaderValue
                            .Parse(file.ContentDisposition)
                            ?.FileName
                            ?.Trim('"');

                    if (string.IsNullOrWhiteSpace(filename))
                    {
                        return BadRequest("Invalid file name detected.");
                    }

                    var filenameToCopy = Path.Combine(_hostingEnvironment.WebRootPath, "uploads", "unit_images", filename);
                    size += file.Length;

                    if (!System.IO.File.Exists(filenameToCopy))
                    {
                        using (FileStream fs = System.IO.File.Create(filenameToCopy))
                        {
                            file.CopyTo(fs);
                            fs.Flush();
                        }
                    }
                }

                return Ok(new { Size = size, Message = "File uploaded successfully." });
            }
            catch (Exception e)
            {
                return HandleErrorResponse("File failed to upload", e);
            }
        }

        [HttpPost("[action]")]
        public IActionResult Remove(IList<IFormFile> uploadFiles)
        {
            try
            {
                if (uploadFiles == null || uploadFiles.Count == 0 || uploadFiles[0] == null)
                {
                    return BadRequest("No files specified for removal.");
                }

                var filename = Path.Combine(_hostingEnvironment.ContentRootPath, uploadFiles[0].FileName);

                if (System.IO.File.Exists(filename))
                {
                    System.IO.File.Delete(filename);
                    return Ok(new { Message = "File removed successfully." });
                }
                else
                {
                    return NotFound("File not found.");
                }
            }
            catch (Exception e)
            {
                return HandleErrorResponse("Error removing file", e);
            }
        }

        private IActionResult HandleErrorResponse(string reasonPhrase, Exception exception)
        {
            Response.Clear();
            Response.StatusCode = 500; // Internal Server Error

            var httpResponseFeature = Response.HttpContext.Features.Get<IHttpResponseFeature>();

            if (httpResponseFeature != null)
            {
                httpResponseFeature.ReasonPhrase = reasonPhrase;
            }
            else
            {
                // Handle the case when IHttpResponseFeature is not available.
                // You might log this or take some other action based on your application's needs.
            }

            return Json(new { ErrorMessage = exception.Message });
        }
    }
}
