<?php 
  use controller\Blog;
  use controller\Comment;

  $blog = new Blog;
  $com = new Comment;

  $id = $_GET['detail'];  
  $post = $blog->detail($id);
  $com->addComment();

 ?>
<!-- Post Content Column -->
<div class="col-lg-8">

  <!-- Title -->
  <h1 class="mt-4"><?php echo $post['title']  ?></h1>

  <!-- Author -->
  <p class="lead">
    by
    <a href="#">Start Bootstrap</a>
  </p>

  <hr>

  <!-- Date/Time -->
  <p>Posted on <?php echo $post['date_post'] ?></p>

  <hr>

  <!-- Preview Image -->
  <!-- <img class="img-fluid rounded" src="http://placehold.it/900x300" alt=""> -->
 <?php echo cl_image_tag($post['image_news'], 
    array("width"=>750, "height"=>300, "crop"=>"fill", "class"=>"card-img-top")
    ); ?>
  <hr>

  <!-- Post Content -->
  <p class="lead"><?php echo nl2br($post['news']) ?></p>

  <!-- Comments Form -->
  <div class="card my-4">
    <h5 class="card-header">Leave a Comment:</h5>
    <div class="card-body">
      <form action="index.php?detail=<?php echo $post['id'] ?>" method="post">
        <div class="form-group">
          <label>Username</label>
          <input name="username" type="text" class="form-control" rows="3">
        </div>
        <div class="form-group">
          <label>Reply</label>
          <textarea name="reply" class="form-control" rows="3"></textarea>
        </div>
        <input type="hidden" name="post_id" value="<?php echo $post['id'] ?>">
        <input name="submit" type="submit" class="btn btn-primary" value="Submit">
      </form>
    </div>
  </div>

  <!-- Single Comment -->
  <?php if(isset($_GET['success'])): ?>
    <div class="alert alert-success lead " id="comment">New Comment Added Below:</div>
  <?php endif ?>

  <?php foreach ($com->getComment($id) as $com):?>
  <div class="media mb-4">
    <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
    <div class="media-body">
      <!-- isi comentar -->
      <h5 class="mt-0"><?php echo $com['username'] ?></h5>
      <?php echo $com['reply'] ?>
    </div>
  </div>
<?php endforeach ?>

</div>