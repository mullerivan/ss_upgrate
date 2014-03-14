<div id="myCarousel" class="carousel slide carousel-fade col-lg-8 col-offset-2" data-ride="carousel">
    <div class="carousel-inner">
        <% loop $Picture %>
            <% if $First %>
            <div class="item active" id="$Name">
            <% else %>
            <div class="item" id="$Name">
            <% end_if %>
            <a href="$Filename" data-lightbox="carousel">
                <img title="$Title" alt="$Title" src="$PaddedImage(368,206).URL"/>
            </a>
        </div>
        <% end_loop %>
    </div>
    </div>
    <br>
    <% loop $Picture %>
        <a id="$Name" href="#" onclick="changeActiveItem($pos);">
            <img id="$Name" title="$Title" alt="$Title" src="$PaddedImage(90,51).URL">
        </a>
    <% end_loop %>
</div>
<script>

    jQuery('.carousel').carousel({interval: 20000 });
    function changeActiveItem(pos) {
        jQuery('.carousel').carousel(pos - 1)
    }
</script>