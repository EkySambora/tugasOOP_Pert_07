<?php 
  use controller\Blog as blog;  
  $post = new Blog;
 ?>
<!-- Sidebar Widgets Column -->
<div class="col-md-4">
<form action="" method="get">
  <!-- Search Widget -->
  <div class="card my-4">
    <h5 class="card-header">Search</h5>
    <div class="card-body">
      <div class="input-group">
        <input type="text" name="search" class="form-control" placeholder="Search for...">
        <span class="input-group-btn">
          <button class="btn btn-secondary" type="submit">Go!</button>
        </span>
      </div>
    </div>
  </div>
</form>
  <!-- Categories Widget -->
  <div class="card my-4">
    <h5 class="card-header">Categories</h5>
    <div class="card-body">
      <div class="row">
      <?php if(count($post->getCategory())):?>
        <div class="col-lg-12">
          <ul class="list-unstyled mb-0">
            <?php foreach($post->getCategory() as $cat): ?>
            <li>
              <a href="?category=<?php echo $cat['id'] ?>"><?php echo $cat['category_name'] ?></a>
            </li>
           <?php endforeach; ?>
          </ul>
        </div>
      <?php endif; ?>
      </div>
    </div>
  </div>

  <!-- Side Widget -->
  <div class="card my-4">
    <h5 class="card-header">Side Widget</h5>
    <div class="card-body">
      You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
    </div>
  </div>

</div>