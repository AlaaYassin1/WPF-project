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
    /// Interaction logic for MemberForm.xaml
    /// </summary>
    public partial class MemberForm : Window
    {
        public List<Memb> membs = new List<Memb>(); 
        public MemberForm()
        {
            InitializeComponent();
            membs.Add(new Memb{ shName="VIP"});
            membs.Add(new Memb { shName = "Class A" });
            membs.Add(new Memb { shName = "Class B" });


            comboname.ItemsSource = membs;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            List<allMemberShips> coachess = MemberShipHelper.GetallMemberShips();
            if (string.IsNullOrEmpty(shid.Text.ToString()) && string.IsNullOrEmpty(shid.Text.ToString()))
            {
                MessageBox.Show("Required");
            }
            allMemberShips coach = new allMemberShips();
            MimberShipWindo studentWindo = new MimberShipWindo();
            coach.shId = Convert.ToInt32(shid.Text);
            coach.shName = comboname.SelectedValue.ToString();
          


            //coach.shName = shname.Text;
            //  coach.Class = cmboxP.SelectedValue.ToString();
            //if ((bool)genderF.IsChecked)
            //{
            //    coach.gender = "Female";

            //}
            //else if ((bool)genderM.IsChecked)
            //{
            //    coach.gender = "Male";
            //}


            //coach.DateOfBirth = DOB.SelectedDate.ToString();
            coach.Duration = duration.Text;
            coach.Goal = goal.Text;
            coach.Cost = cost.Text;
            //coach.Password = password.Text;

            if (MemberShipHelper.insertMemberShips(coach) > 0)
            {

                studentWindo.memberdatagrd.ItemsSource = coachess;
                MessageBox.Show("Insert");
                this.Close();


            }


            else
            {
                MessageBox.Show("Not Success");
            }
        }

      
    }

    
}

