using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WPFLibrary.View
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }
  public void btnMin_Click(object sender ,RoutedEventArgs e)
        {
            WindowState=WindowState.Minimized;
        }
        public void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();   
        }

        private void btnLog_Click(object sender, RoutedEventArgs e)
        {
            // Window1 window1 = new Window1();    
            //StudentWindo st=new StudentWindo();
            //if(txtUser.Text== "Alaa" || txtPass.Text=="123456" )
            //{
            //    st.Show();
            //    this.Close();   
            //}
            //using (SqlConnection conn = new SqlConnection("Data Source = ALAA; Initial Catalog = GYM; Integrated Security = True"))
            //{


                try
                {
                    int count = 0;
                    SqlConnection conn = new SqlConnection(@"Data Source = ALAA; Initial Catalog = GYM; Integrated Security = True");
                    SqlCommand cmd = new SqlCommand();
                    conn.Open();
                    cmd.Connection = conn;
                    cmd.CommandText = "Loginss";
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userName", txtUser.Text.ToString());
                    cmd.Parameters.AddWithValue("@Password", txtPass.Text.ToString());

                    if (txtUser.Text.ToString() == cmd.ExecuteScalar().ToString())
                    {
                        txtUser.Text = "";
                        txtPass.Text = "";
                    StudentWindo st=new StudentWindo();
                    st.Show();
                       // Login logg = new Login();
                        this.Close();
                       // logg.Show();
                    }
               

            }
                catch (Exception ex)
                {
                    MessageBox.Show("Please,Sign In");
                }
                //    try
                //    {
                //        //int p = 0;

                //        conn.Open();
                //        string data = "select UserName,Password from Login where UserName=@userName and Password =@Password";
                //        SqlCommand cmd = new SqlCommand(data, conn);
                //        cmd.Parameters.AddWithValue("@userName", txtUser.Text);
                //        cmd.Parameters.AddWithValue("@Password", txtPass.Text);
                //        //  p= cmd.ExecuteNonQuery();
                //        //     int count = Convert.ToInt32();

                //        if (txtUser.Text.ToString() == cmd.ExecuteScalar().ToString())
                //        {
                //            StudentWindo st = new StudentWindo();
                //            txtUser.Text = "";
                //            txtPass.Text = "";
                //            this.Close();
                //            st.Show();
                //        }
                //        else
                //        {
                //            MessageBox.Show("Password or userName is not correct");
                //        }





                //    }

                //    catch (Exception ex)
                //    {
                //        MessageBox.Show(ex.Message);

                //    }
                //}
            }

        private void btnSign_Click(object sender, RoutedEventArgs e)
        {
           SignIn sign=new SignIn();
            sign.Show();
               
            }
        

       
    }
}
