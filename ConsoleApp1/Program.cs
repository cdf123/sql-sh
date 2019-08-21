using System;
using Exploit;
using System.Data.SqlTypes;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            SqlString result = ReverseShell.Cmd(new SqlString("ipconfig /all"));
            //SqlString result = ReverseShell.Powershell(new SqlString("Get-NetIpConfiguration"));
            System.Diagnostics.Debug.WriteLine(result.Value);
            Console.WriteLine(result.Value);
        }
    }
}
