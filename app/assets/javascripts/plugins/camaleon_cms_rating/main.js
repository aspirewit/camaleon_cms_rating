//= require ./jquery.raty
//
jQuery(function(){
  $.ajaxSetup({
    beforeSend: function(xhr) {
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
    }
  });

  $('.read-only-rating').raty({
    path: '/assets/plugins/camaleon_cms_rating',
    readOnly: true,
    score: function() {
      return $(this).data('score');
    }
  });

  $('.editable-rating').raty({
    path: '/assets/plugins/camaleon_cms_rating',
    click: function(score, event) {
      $this = $(this);
      $this.raty({
        path: '/assets/plugins/camaleon_cms_rating',
        readOnly: true
      });

      data = { post_id: $this.data('post-id'), score: score };
      $.post("/plugins/camaleon_cms_rating/create", data);
    }
  });
});
