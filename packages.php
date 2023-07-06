
<section class="page-section bg-dark" id="home">
	<div class="container">
		<h2 class="text-center">Camp Sites</h2>
		<div class="d-flex w-100 justify-content-center">
			<hr class="border-warning" style="border:3px solid" width="15%">
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<!-- Toggle button -->
				<button
						class="btn btn-outline-secondary mb-3 w-100 d-lg-none"
						type="button"
						data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent"
						aria-expanded="false"
						aria-label="Toggle navigation"
						>
				<span>Show filter</span>
				</button>
				<!-- Collapsible wrapper -->
				<div class="collapse card d-lg-block mb-5" id="navbarSupportedContent">
					<div class="accordion" id="accordionPanelsStayOpenExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button
										class="accordion-button text-dark bg-light"
										type="button"
										data-toggle="collapse"
										data-target="#panelsStayOpen-collapseOne"
										aria-expanded="true"
										aria-controls="panelsStayOpen-collapseOne"
										>
								Brands
								</button>
								<!-- MDB -->
							</h2>
							<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo">
								<div class="accordion-body text-dark">
									<div>
										<?php
											$luzon = $conn->query("SELECT * FROM packages WHERE island = 'Luzon'");
											$visayas = $conn->query("SELECT * FROM packages WHERE island = 'Visayas'");
											$mindanao = $conn->query("SELECT * FROM packages WHERE island = 'Mindanao'");

											$row_luzon = mysqli_num_rows($luzon);
											$row_visayas = mysqli_num_rows($visayas);
											$row_mindanao = mysqli_num_rows($mindanao);

										?>
										<!-- Checked checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked1" checked />
											<label class="form-check-label" for="flexCheckChecked1">Luzon</label>
											<span class="badge badge-secondary float-end"><?php echo $row_luzon ?></span>
										</div>
										<!-- Checked checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked2" checked />
											<label class="form-check-label" for="flexCheckChecked2">Visayas</label>
											<span class="badge badge-secondary float-end"><?php echo $row_visayas ?></span>
										</div>
										<!-- Checked checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked3" checked />
											<label class="form-check-label" for="flexCheckChecked3">Mindanao</label>
											<span class="badge badge-secondary float-end"><?php echo $row_mindanao ?></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button
										class="accordion-button text-dark bg-light"
										type="button"
										data-toggle="collapse"
										data-target="#panelsStayOpen-collapseThree"
										aria-expanded="false"
										aria-controls="panelsStayOpen-collapseThree"
										>
								Price
								</button>
							</h2>
							<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingThree">
								<div class="accordion-body">
									<div class="range">
										<input type="range" class="form-range" id="customRange1"/>
									</div>
									<div class="row mb-3 text-secondary">
										<div class="col-6">
										<p class="mb-0">
											Min
										</p>
										<div class="form-outline">
											<input type="number" id="typeNumber" class="form-control"/>
										</div>
										</div>
										<div class="col-6">
										<p class="mb-0">
											Max
										</p>
										<div class="form-outline">
											<input type="number" id="typeNumber" class="form-control" />
										</div>
										</div>
									</div>
									<button type="button" class="btn btn-white w-100 border border-secondary">Apply</button>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button
										class="accordion-button text-dark bg-light"
										type="button"
										data-toggle="collapse"
										data-target="#panelsStayOpen-collapseFive"
										aria-expanded="false"
										aria-controls="panelsStayOpen-collapseFive"
										>
								Ratings
								</button>
							</h2>
							<div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse show" aria-labelledby="headingThree">
								<div class="accordion-body">
									<!-- Default checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
										<label class="form-check-label" for="flexCheckDefault">
										<i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i>
										<i class="fas fa-star text-warning"></i>
										</label>
									</div>
									<!-- Default checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
										<label class="form-check-label" for="flexCheckDefault">
										<i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i>
										<i class="fas fa-star text-secondary"></i>
										</label>
									</div>
									<!-- Default checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
										<label class="form-check-label" for="flexCheckDefault">
										<i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-secondary"></i>
										<i class="fas fa-star text-secondary"></i>
										</label>
									</div>
									<!-- Default checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
										<label class="form-check-label" for="flexCheckDefault">
										<i class="fas fa-star text-warning"></i><i class="fas fa-star text-warning"></i><i class="fas fa-star text-secondary"></i><i class="fas fa-star text-secondary"></i>
										<i class="fas fa-star text-secondary"></i>
										</label>
									</div>
									<!-- Default checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked />
										<label class="form-check-label" for="flexCheckDefault">
										<i class="fas fa-star text-warning"></i><i class="fas fa-star text-secondary"></i><i class="fas fa-star text-secondary"></i><i class="fas fa-star text-secondary"></i>
										<i class="fas fa-star text-secondary"></i>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-9">
				<header class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
					<div class="col-lg-5 col-md-12 col-12">
						
					</div>
					<div class="ms-auto">
						<div class="btn-group shadow-0 border">
							<form action="" method="GET">
								<div class="input-group float-center">
										<input type="search" name="search" id="form1" class="form-control" value="<?php if(isset($_GET['search'])) {echo $_GET['search'];} ?>"/>
									<button type="submit" class="btn btn-primary shadow-0">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
				</header>

			
				<div class="row justify-content-center mb-3">
					<div class="col-md-12">
						<div class="card shadow-0 border rounded-3">
							<div class="card-body">
								<div class="packages-wrapper mt-3">
										<?php
											$packages = $conn->query("SELECT * FROM `packages`");
											while($row = $packages->fetch_assoc() ):
												$cover='';
												if(is_dir(base_app.'uploads/package_'.$row['id'])){
													$img = scandir(base_app.'uploads/package_'.$row['id']);
													$k = array_search('.',$img);
													if($k !== false)
														unset($img[$k]);
													$k = array_search('..',$img);
													if($k !== false)
														unset($img[$k]);
													$cover = isset($img[2]) ? 'uploads/package_'.$row['id'].'/'.$img[2] : "";
												}
												$row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));

												$review = $conn->query("SELECT * FROM `rate_review` where package_id='{$row['id']}'");
												$review_count =$review->num_rows;
												$rate = 0;
												while($r= $review->fetch_assoc()){
													$rate += $r['rate'];
												}
												if($rate > 0 && $review_count > 0)
												$rate = number_format($rate/$review_count,0,"");
										?>
										<div class="card d-flex w-100 rounded-0 mb-3 package-item">
											<img class="card-img-top" src="<?php echo validate_image($cover) ?>" alt="<?php echo $row['title'] ?>" height="200rem" style="object-fit:cover">
											<div class="card-body">
											<h5 class="card-title truncate-1"><?php echo $row['title'] ?> - <?php echo $row['tour_location'] ?></h5>
											<div class=" w-100 d-flex justify-content-start">
											<form action="">
												<div class="stars stars-small">
														<input disabled class="star star-5" id="star-5" type="radio" name="star" <?php echo $rate == 5 ? "checked" : '' ?>/> <label class="star star-5" for="star-5"></label> 
														<input disabled class="star star-4" id="star-4" type="radio" name="star" <?php echo $rate == 4 ? "checked" : '' ?>/> <label class="star star-4" for="star-4"></label> 
														<input disabled class="star star-3" id="star-3" type="radio" name="star" <?php echo $rate == 3 ? "checked" : '' ?>/> <label class="star star-3" for="star-3"></label> 
														<input disabled class="star star-2" id="star-2" type="radio" name="star" <?php echo $rate == 2 ? "checked" : '' ?>/> <label class="star star-2" for="star-2"></label> 
														<input disabled class="star star-1" id="star-1" type="radio" name="star" <?php echo $rate == 1 ? "checked" : '' ?>/> <label class="star star-1" for="star-1"></label> 
												</div>
											</form>
											</div>
											<p class="card-text truncate"><?php echo $row['description'] ?></p>
											<div class="w-100 d-flex justify-content-between">
												<span class="rounded-0 btn btn-flat btn-sm btn-primary"><i class="fa fa-tag"></i> <?php echo number_format($row['cost']) ?></span>
												<a href="./?page=view_package&id=<?php echo md5($row['id']) ?>" class="btn btn-sm btn-flat btn-warning">View Camp <i class="fa fa-arrow-right"></i></a>
											</div>
											</div>
										</div>
										<?php endwhile; ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr />
			</div>
		</div>
	</div>


		<script type="text/javascript">
			$(document).ready(function(){
				$("#island").on('change', function(){
					var value = $(this).val();
					
					$.ajax({
						url:"fetch.php",
						type:"POST",
						data:"request=" + value,
						beforeSend:function(){
							$(".packages-wrapper").html("<span>Working...</span>");
						},
						success:function(data){
							$(".packages-wrapper").html(data);
						}
					})

				});
			});
		</script>

</section>