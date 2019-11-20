using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitAmerica.Entity
{
    public class VersionDetailsoModel
    {
        public int VersionDetailsId { get; set; }
        public string Version { get; set; }
        public string VersionTypeName { get; set; }
        public string FileName { get; set; }
        public Guid FileId { get; set; }
        public string Memo { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> LastUpdated { get; set; }

    }
}
