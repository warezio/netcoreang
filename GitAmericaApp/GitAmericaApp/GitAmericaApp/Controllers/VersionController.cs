using GitAmerica.Entity;
using GitAmerica.Service;
using GitAmericaApp.Core.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace GitAmericaApp.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")] // tune to your needs
    [RoutePrefix("")]
    public class VersionController : BaseWebApiController
    {
        // GET api/values
        public GitWebOutput<List<VersionDetailsoModel>> GetVersionDetailsByVertionType(string versionTypeCode) {
            var output = new GitWebOutput<List<VersionDetailsoModel>>();
            try
            {
               var data = new VersionService().GetVersionDetailsByVersionType(versionTypeCode);
                output.OutputData = data;
            }
            catch (Exception ex) {
                output.Messages = new List<string>();
                output.Messages.Add("Failed to process the request. Please try after sometime of contact webAdmin");
            }
            return output;
        }
    }
}
