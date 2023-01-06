using System;
using System.Collections.Generic;
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
    /// Interaction logic for EditMember.xaml
    /// </summary>
    public partial class EditMember : Window
    {public List<Memb> membs = new List<Memb>();
        public EditMember()
        {
            InitializeComponent();
            membs.Add(new Memb { shName = "VIP" });
            membs.Add(new Memb { shName = "Class A" });
            membs.Add(new Memb { shName = "Class B" });

            comboname.ItemsSource = membs;

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MimberShipWindo sw = new MimberShipWindo();
                allMemberShips coach = new allMemberShips();
                coach.shId = Convert.ToInt32(shid.Text);  
  
              //coach.shName = shname.Text;
            coach.shName = comboname.SelectedValue.ToString();


            coach.Duration = duration.Text;
            coach.Goal = goal.Text;
            coach.Cost = cost.Text;
            //coach.Password = password.Text;


            if (MemberShipHelper.updateDepartment(coach) > 0)
            {
                MessageBox.Show("Updated");
                sw.memberdatagrd.ItemsSource = MemberShipHelper.GetallMemberShips();


                }
                else
            {
                MessageBox.Show("Not Success");


            }
            //student.Class = cmboxP.SelectedItem.ToString();
            //cmboxP.ItemsSource = StudentHelper.allStudent();


            this.Close();
        }
            catch (Exception ex) { MessageBox.Show(ex.Message); }
        }
    }
}
