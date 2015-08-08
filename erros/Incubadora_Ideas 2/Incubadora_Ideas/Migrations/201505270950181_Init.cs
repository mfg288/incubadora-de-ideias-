namespace Incubadora_Ideas.Migrations
{
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Init : DbMigration
    {
        public override void Up()
        {
        }
        public class ApplicationUser : IdentityUser { public string Photo { get; set; } }

        public override void Down()
        {
        }
    }
}
