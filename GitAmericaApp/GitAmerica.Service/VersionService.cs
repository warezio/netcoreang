using GitAmerica.Entity;
using GitAMerica.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitAmerica.Service
{
    public class VersionService
    {
        public List<VersionDetailsoModel> GetVersionDetailsByVersionType(string versionTypeCode)
        {
            return new VersionRepository().GetVersionDetailsListByVersionType(versionTypeCode);
        }
    }
}
