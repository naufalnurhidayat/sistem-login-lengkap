        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

          <div class="row">
          	
          	<div class="col-lg-8">
          		
          		<form action="" method="POST">

	    			<div class="form-group row">
					    <label for="title" class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="title" name="title" value="<?= $submenu['title']; ?>">
					      <?= form_error('title', '<small class="text-danger">', '</small>'); ?>
					    </div>
					  </div>
            <div class="form-group row">
              <label for="title" class="col-sm-2 col-form-label">Title</label>
              <div class="col-sm-4">
                <select name="menu_id" id="menu_id" class="form-control">
                  <option value="">Select Menu</option>
                    <?php foreach($menu as $m) : ?>
                    <?php if ( $m['id'] == $submenu['menu_id'] ) : ?>
                  <option value="<?= $m['id']; ?>" selected><?= $m['menu']; ?></option>
                    <?php else : ?>
                  <option value="<?= $m['id']; ?>"><?= $m['menu']; ?></option>
                    <?php endif; ?>
                    <?php endforeach; ?>
                </select>
                <?= form_error('title', '<small class="text-danger">', '</small>'); ?>
              </div>
            </div>
            <div class="form-group row">
              <label for="url" class="col-sm-2 col-form-label">URL</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" id="url" name="url" value="<?= $submenu['url']; ?>">
                <?= form_error('url', '<small class="text-danger">', '</small>'); ?>
              </div>
            </div>
            <div class="form-group row">
              <label for="icon" class="col-sm-2 col-form-label">Icon</label>
              <div class="col-sm-4">
                <input type="text" class="form-control" id="icon" name="icon" value="<?= $submenu['icon']; ?>">
                <?= form_error('icon', '<small class="text-danger">', '</small>'); ?>
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

