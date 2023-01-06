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
    /// Interaction logic for SignIn.xaml
    /// </summary>
    public partial class SignIn : Window
    {
        public SignIn()
        {
            InitializeComponent();
        }
        public void btnMin_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
        public void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnSign_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source = ALAA; Initial Catalog = GYM; Integrated Security = True"))
                {
                    conn.Open();
                    string data = "insert into Login values (@userName,@Password)";
                    SqlCommand cmd = new SqlCommand(data, conn);
                    if (txtUser.Text.ToString() == string.Empty) MessageBox.Show("Enter UserName");
                    else cmd.Parameters.AddWithValue("@userName", txtUser.Text);
                    //if (txtEmail.Text.ToString().Contains('@') && txtEmail.Text.ToString().Contains('.'))
                    //    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    //else MessageBox.Show("Email must contains @ and .");
                    if (txtPass.Text.ToString().Length >= 5)
                        cmd.Parameters.AddWithValue("@Password", txtPass.Text);
                    else MessageBox.Show("Password should be 5 letter or more");
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Added");
                    txtUser.Text = "";
                    // txtEmail.Text = "";
                    txtPass.Text = "";
                    Login loginn = new Login();

                    this.Close();
                    loginn.Show();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }
        }
    }
    }

