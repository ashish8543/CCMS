using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal2
{
    public class datalayer
    {
        connection con = new connection();

        public void SaveData(u_registeration ur, Login_detail ld, u_profile up)
        {
            con.da.u_registerations.InsertOnSubmit(ur);
            con.da.Login_details.InsertOnSubmit(ld);
            con.da.u_profiles.InsertOnSubmit(up);
            con.da.SubmitChanges();
        }
        


        public IEnumerable<Login_detail> Login(Login_detail ur)
        {
            var q = from a in con.da.Login_details
                    where a.email_id == ur.email_id && a.pass == ur.pass && a.isactive == 0

                    select a;
            return q;
        }

        

        
        public IEnumerable<u_profile> Check(u_profile up)
        {
            var q = from a in con.da.u_profiles
                    where a.login_id == up.login_id && a.isactive == 0
                    select a;
            return q;
        }
       

        public IEnumerable<Login_detail> forgetPass(Login_detail ur)
        {
            var q1 = from a in con.da.Login_details
                    where a.email_id == ur.email_id  && a.isactive == 0
                    select a;
            return q1;
        }
        public int update_profile(u_profile up)
        {
            var q = from a in con.da.u_profiles
                    where a.login_id == up.login_id && a.isactive==0
                    select a;
            if (q.Any())
            {
                foreach (u_profile k in q)
                {
                    k.adhar_no = up.adhar_no;
                    k.p_pic = up.p_pic;
                    k.ad_pic = up.ad_pic;
                    k.u_date = DateTime.Now;
                }

                con.da.SubmitChanges();
                return 0;

            }

            else
            {
                return 1;
            }

            
        }

        public int updatepass(Login_detail ld, string newpass)
        {
            var q = from a in con.da.Login_details
                    where a.email_id == ld.email_id && a.pass == ld.pass && a.isactive == 0
                    select a;

            if (q.Any())
            {
                foreach (Login_detail k in q)
                {
                    k.pass = newpass;
                    k.u_date = DateTime.Now;
                }

                con.da.SubmitChanges();
                return 0;
            }
            else
            {
                return 1;
            }
        }

        public int forgotpass(string email)
        {
            var q = from a in con.da.Login_details
                    where a.email_id == email && a.isactive == 0
                    select a;
            if (q.Any())
            {
                return 0;
            }

            else
            {
                return 1;
            }
        }

        public int forgetchange(string email, string pass)
        {
            var q = from a in con.da.Login_details
                    where a.email_id == email && a.isactive == 0
                    select a;
            if (q.Any())
            {
                foreach (Login_detail k in q)
                {
                    k.pass = pass;
                }

                con.da.SubmitChanges();
                return 0;
            }
            else
            {
                return 1;
            }

            
        }

        public IEnumerable<u_registeration> getRegisterationtbl()
        {
            var q = from a in con.da.u_registerations
                    select a;
            return q;

        }

        public IEnumerable<u_registeration> getData(string email)
        {
            var q = from a in con.da.u_registerations
                    where a.email_id == email && a.isactive == 0
                    select a;
            return q;
        }


        public IEnumerable<employee> getDatauser()
        {
            var q = from a in con.da.employees
                    select a;
            return q;
        }

        public IEnumerable<state_> getdatastate()
        {
            var q = from a in con.da.state_s
                    select a;
            return q;
        }


        public IEnumerable<city> getdatacity(int data)
        {
            var q = from a in con.da.cities
                    where a.stateid==data && a.isactive==0
                    select a;
            return q;


        }

        public IEnumerable<area> getdataarea(int data)
        {
            var q = from a in con.da.areas
                    where a.city_id== data && a.isactive==0
                    select a;
            return q;
        }

        public IEnumerable<Kotwali> getdatakotwali(int data)
        {
            var q = from a in con.da.Kotwalis
                    where a.area_id == data && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<thana> getdatathana(int data)
        {
            var q = from a in con.da.thanas
                    where a.kotw_id == data && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<choki> getdatachoki(int data)
        {
            var q = from a in con.da.chokis
                    where a.thana_id == data && a.isactive == 0
                    select a;
            return q;
        }

        
        public void SaveComplain(complain comp)
        {
            con.da.complains.InsertOnSubmit(comp);
            con.da.SubmitChanges();
        }

      public IEnumerable<complain>getComplainDetails(string email)
        {
            var q = from a in con.da.complains
                    where a.email_id== email && a.isactive==0
                    select a;
            return q;
                   
        }

        public IEnumerable<employee> getEmployee(string choki)
        {
            var q = from a in con.da.employees
                    where a.choki_name == choki
                    select a;
            return q;

        }

        
    }

}
