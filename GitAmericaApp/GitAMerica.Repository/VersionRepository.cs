using GitAmerica.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GitAMerica.Repository
{
    public class VersionRepository
    {
        public List<VersionDetailsoModel> GetVersionDetailsListByVersionType(string versionType)
        {
            List<VersionDetailsoModel> output = null;
            using (HMA_PDIEntities dbCtx = new HMA_PDIEntities()) {
                output=( from x in dbCtx.VersionDetails
                join y in dbCtx.VersionTypes
                on x.VersionTypeId equals y.VersionTypeId
                         where y.VersionTypeCode== versionType
                         select new VersionDetailsoModel
                {
                    VersionDetailsId = x.VersionDetailsId,
                    Version = x.Version,
                    VersionTypeName = y.VersionTypeName,
                    //FileId = 
                    //FileName=
                    CreatedDate = x.CreatedDate,
                    Memo = x.Memo
                }).ToList<VersionDetailsoModel>();
                return output;
            }
        }
    }
}
