using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace GitAmericaApp.Core.Web
{
    public class GitWebOutput<T> where T : class
    {
        public T OutputData {get;set;}
        public List<string> Messages { get; set; }
    }
}
