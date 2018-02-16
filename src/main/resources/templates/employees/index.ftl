<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

	
	$(document).ready(function(){

		//get
		$("#getTwo").click(function(){
		alert('yes');
			$.get('/api/test/1',function(data){
				alert(data.id+'\t'+data.name);
			});
		});

	});

</script>
  
  
  
  <title>Hello, world!</title>
  
  
  
</head>
<body>
  <br/>
  <div class="container">

    <div class="row">
      <div class="col-md-12">
       <!-- Button trigger modal -->
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        <i class="fas fa-plus"></i>
      </button>
    </div>

    <div class="row">
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <!-- <form class="container" method="POST"> -->
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Add Employee</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

              <div class="row">
                <div class="col-md-12">
                  <label>Name</label>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-6">
                  <input type="text" class="form-control" name="firstName" placeholder="First Name">
                </div>
                <div class="form-group col-md-6">
                  <input type="text" class="form-control" name="lastName" placeholder="Last Name">
                </div>
              </div>

              <div class="row">
                <div class="form-group col-md-12">
                  <label for="formGroupExampleInput2">Email</label>
                  <input type="email" class="form-control" name="email" placeholder="Email">
                </div>

                <div class="form-group col-md-12">
                  <label for="formGroupExampleInput2">Designation</label>
                  <input type="text" class="form-control" name="designation" placeholder="Designation">
                </div>
              </div>


              
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" id="submit" data-dismiss="modal">Save</button>
            </div>
          <!-- </form> -->
        </div>
      </div>
    </div>
  </div>
</div>

<hr/>

<div class="row text-center">
  <div class="col-md-12">Employee List</div>
</div>

<div class="row">
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Email</th>
        <th scope="col">Designation</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th >I1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>
          <button type="button" class="btn btn-primary">
          <i class="far fa-trash-alt"></i>
          </button>

          <button id="getTwo" type="button" class="btn btn-primary">
          <i class="far fa-edit"></i>
          </button>

        </td>
      </tr>
    </tbody>
  </table>
</div>

<div class="row">
  <nav aria-label="Page navigation example">
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
      <li class="page-item"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
  </nav>
</div>

</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>