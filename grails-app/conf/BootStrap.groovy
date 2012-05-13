import livingspace.Role
import livingspace.User
import livingspace.UserRole

class BootStrap
{

    def init = { servletContext ->
        def admin = User.findByUsername('admin')
        if (!admin)
        {
            def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
            admin = new User(
                    username: 'admin',
                    enabled: true,
                    password: 'changeit')
            admin.save(flush: true)
            UserRole.create admin, adminRole, true
        }
    }

    def destroy = {

    }
}
