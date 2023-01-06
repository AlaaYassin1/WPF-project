using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPFLibrary
{
    internal class CoachHelper
    {
        public static List<Coach> GetCoach()
        {
            List<Coach> Coachs = new List<Coach>();
            using (SqlConnection conn = new SqlConnection("Data Source=ALAA;Initial Catalog=GYM;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "allCoach";
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Coachs.Add(new Coach
                    {

                        Cid = Convert.ToInt32(reader[0]),
                        Cname = reader[1].ToString(),
                        gender = reader[2].ToString(),
                        DateOfBirth = reader[3].ToString(),
                        phone = reader[4].ToString(),
                        Experience = reader[5].ToString(),
                        Address = reader[6].ToString(),
                        Password = reader[7].ToString(),



                    });
                }



            }
            return Coachs;

        }



        public static int updateDepartment(Coach department)
        {
            int r = 0;
            using (SqlConnection conn = new SqlConnection("Data Source=ALAA;Initial Catalog=GYM;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "updateCoach";
                cmd.Parameters.AddWithValue("@Cid", Convert.ToInt32(department.Cid));
                cmd.Parameters.AddWithValue("@Cname", department.Cname);
                cmd.Parameters.AddWithValue("@gender", department.gender);
                cmd.Parameters.AddWithValue("@DateOfBirth", department.DateOfBirth);
                cmd.Parameters.AddWithValue("@phone", department.phone);
                cmd.Parameters.AddWithValue("@Experience", department.Experience);
                cmd.Parameters.AddWithValue("@Address", department.Address);
                cmd.Parameters.AddWithValue("@Password", department.Password);
                r = cmd.ExecuteNonQuery();
            }
            return r;

        }
        public static int insertCoach(Coach department)
        {
            int r = 0;
            using (SqlConnection conn = new SqlConnection("Data Source=ALAA;Initial Catalog=GYM;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "insertCoach";
                cmd.Parameters.AddWithValue("@Cid", Convert.ToInt32(department.Cid));
                cmd.Parameters.AddWithValue("@Cname", department.Cname);
                cmd.Parameters.AddWithValue("@gender", department.gender);
                cmd.Parameters.AddWithValue("@DateOfBirth", department.DateOfBirth);
                cmd.Parameters.AddWithValue("@phone", department.phone);
                cmd.Parameters.AddWithValue("@Experience", department.Experience);
                cmd.Parameters.AddWithValue("@Address", department.Address);
                cmd.Parameters.AddWithValue("@Password", department.Password);
                r = cmd.ExecuteNonQuery();

               
            }
            return r;

        }
        public static int deleteCoach(int Cid)
        {
            int r = 0;
            using (SqlConnection conn = new SqlConnection("Data Source=ALAA;Initial Catalog=GYM;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "deleteCoach";
                cmd.Parameters.AddWithValue("@Cid", Cid);

                r = cmd.ExecuteNonQuery();

            }
            return r;
        }













    }
}
