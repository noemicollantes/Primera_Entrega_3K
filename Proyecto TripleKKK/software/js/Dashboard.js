class DashboardJs{


    closeSession(){
        fetch('AccessController/closeSession')
        .then((resp) => resp.json())
        .then(function(data) { 
           toastr.success(data.message);

            setTimeout(function() {
               location.href="index.php";
            }, 2500);
        })
        .catch(function(error) {
          console.log(error);
        });
    }


}
const Dashboard = new DashboardJs();