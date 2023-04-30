using PropertyManagerFL.Application.Interfaces.Repositories;
using PropertyManagerFL.Application.Interfaces.Services.User;
using PropertyManagerFL.Application.Security;
using static PropertyManagerFL.Application.Shared.Enums.AppDefinitions;

namespace PropertyManagerFL.Infrastructure.Security
{
    public class UserAuthenticationService : IUserAuthenticationService
    {
        readonly IDataSecurityRepository _repoSecurityProvider;
        readonly IUserAuthenticationRepository _repoAuthentication;

        public UserAuthenticationService(IDataSecurityRepository repoSecurityProvider,
            IUserAuthenticationRepository repoAuthentication)
        {
            _repoSecurityProvider = repoSecurityProvider;
            _repoAuthentication = repoAuthentication;
        }

        /// <summary>
        /// Autentica��o
        /// </summary>
        /// <param name="userName">Utilizador</param>
        /// <param name="password">Password</param>
        /// <param name="userId">Um par�metro 'out' que devolve o UserId se o login foi bem sucedido</param>
        /// <param name="role">Um par�metro 'out' que devolve o RoleId se o login foi bem sucedido</param>
        /// <returns>true - Se o Utilizador e Password forem v�lidas, sen�o false</returns>
        public bool IsValidUser(string userName, string password, out int userId, UserRole role)
        {
            userName = _repoSecurityProvider.Encrypt(userName);
            password = _repoSecurityProvider.Encrypt(password);

            return _repoAuthentication.IsValidUser(userName, password, out userId, out role);

        }
    }
}
