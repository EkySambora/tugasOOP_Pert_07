<?php 
  
  use controller\Blog;
  $search = $_GET['search'];
  $blog = new Blog;

 ?>
<!-- Blog Entries Column -->

<div class="col-md-8">

  <h1 class="my-4">Page Heading
    <small>Secondary Text</small>
  </h1>

  <!-- Blog Post -->
  <?php if(($blog->searchData($search))): ?>
  <?php foreach($blog->searchData($search) as $post): ?>
  <div class="card mb-4">
    <?php echo cl_image_tag($post['image_news'], 
        array("width"=>750, "height"=>300, "crop"=>"fill", "class"=>"card-img-top")
        ); ?>
    <div class="card-body">
      <h2 class="card-title"><?php echo $post['title'] ?></h2>
      <p class="card-text lead"><?php echo nl2br(substr($post['news'],0,250)).'...' ?></p>
      <a href="?detail=<?php echo $post['id'] ?>" class="btn btn-primary">Read More &rarr;</a>
    </div>
    <div class="card-footer text-muted">
      Posted on <?php echo $post['date_post'] ?> by
      <a href="#">Eky Zulianto Arif</a>
    </div>
  </div>
  <?php endforeach; ?>
  <?php else: ?>
    <div class="alert alert-danger lead font-weight-bold">No News Found with keyword : <?php echo $_GET['search'] ?></div>
<?php endif ?>
  <!-- Pagination -->
  <ul class="pagination justify-content-center mb-4">
    <li class="page-item">
      <a class="page-link" href="#">&larr; Older</a>
    </li>
    <li class="page-item disabled">
      <a class="page-link" href="#">Newer &rarr;</a>
    </li>
  </ul>

</div>

