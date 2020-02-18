        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

          <div class="row">
          	
          	<div class="col-lg-8">
          		
          		<form action="" method="POST">
	    			<div class="form-group row">
					    <label for="menu" class="col-sm-2 col-form-label">Menu</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="menu" name="menu" value="<?= $menu['menu']; ?>">
					      <?= form_error('menu', '<small class="text-danger">', '</small>'); ?>
					    </div>
					</div>
					<div class="form-group row justify-content-end">
						<div class="col-sm-10">
							<button class="btn btn-primary" name="edit" type="submit">Edit</button>
						</div>
					</div>
          		</form>
          	
          	</div>
          
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

