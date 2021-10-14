using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal2
{
    public class datalayer1
    {
        connection con = new connection();

        public IEnumerable<complain> Viewcom(int com_id)
        {
            var q = from a in con.da.complains
                    where a.com_id == com_id
                    select a;
            return q;
        }
        public void Save_Remark(remark r)
        {
            con.da.remarks.InsertOnSubmit(r);
            con.da.SubmitChanges();

        }

        public void User_Save_Remark(user_remark ur)
        {
            con.da.user_remarks.InsertOnSubmit(ur);
            con.da.SubmitChanges();
        }
        public void EmpSaveData(employee er)
        {
            con.da.employees.InsertOnSubmit(er);
            con.da.SubmitChanges();
        }

        public IEnumerable<thana> getThana()
        {
            var q = from a in con.da.thanas
                    select a;
            return q;
        }

        public IEnumerable<choki> getchoki(int data)
        {
            var q = from a in con.da.chokis
                    where a.thana_id == data && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<Kotwali> getdatakotwali()
        {
            var q = from a in con.da.Kotwalis
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


        public IEnumerable<area> getdataarea()
        {
            var q = from a in con.da.areas
                    select a;
            return q;
        }

        public IEnumerable<Kotwali> getdatakotwali1(int data)
        {
            var q = from a in con.da.Kotwalis
                    where a.area_id == data && a.isactive == 0
                    select a;
            return q;
        }


        public IEnumerable<employee> empLogin(employee em)
        {
            var q = from a in con.da.employees
                    where a.email_id == em.email_id && a.pass == em.pass && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<employee> getPoliceData(string email)
        {
            var q = from a in con.da.employees
                    where a.email_id == email && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<employee> getDetailsChoki(string choki, string email)
        {
            var q = from a in con.da.employees
                    where a.choki_name == choki && a.email_id == email && a.isactive == 0
                    select a;
            return q;
        }

        public IEnumerable<employee> getDetailsThana(string thana, string email)
        {
            var q1 = from a in con.da.employees
                     where a.thana_name == thana && a.email_id == email && a.isactive == 0
                     select a;
            return q1;
        }

        public IEnumerable<employee> getDetailsKotwali(string kotwali, string email)
        {
            var q2 = from a in con.da.employees
                     where a.kotwali_name == kotwali && a.email_id == email && a.isactive == 0
                     select a;
            return q2;
        }


        public IEnumerable<employee> empforgetPass(employee em)
        {
            var q = from a in con.da.employees
                    where a.email_id == em.email_id && a.isactive == 0
                    select a;
            return q;
        }

        public int UpdateEmppass(employee em, string newpass)
        {
            var q = from a in con.da.employees
                    where a.email_id == em.email_id && a.pass == em.pass && a.isactive == 0
                    select a;

            if (q.Any())
            {
                foreach (employee k in q)
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

        public void SaveFeedback(review r)
        {
            con.da.reviews.InsertOnSubmit(r);
            con.da.SubmitChanges();
        }

        public IEnumerable<review>getReview()
        {
            var q = from a in con.da.reviews
                    select a;
            return q;
        }

        public IEnumerable<employee> getEmployee()
        {
            var q = from a in con.da.employees
                    select a;
            return q;
        }

        public IEnumerable<employee> getEmployeeDetails(string email)
        {
            var q = from a in con.da.employees
                    where a.email_id == email
                    select a;
            return q;
        }

        public IEnumerable<complain> CheckProof(complain cm)
        {
            var q = from a in con.da.complains
                    where a.com_id == cm.com_id
                    select a;
            return q;
        }

       public int checkEmail(string email)
        {
            var q = from a in con.da.Login_details
                    where a.email_id == email
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

        public IEnumerable<remark>viewRemark()
        {
            var q = from a in con.da.remarks
                    select a;
            return q;
        }


    }
}
