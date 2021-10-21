<template>
  <div class="position-relative">
    <div class="container">
      <div class="main justify-content-center d-flex align-items-center">
        <div class="row">
          <div class="description col-lg-8 offset-lg-2 col-12">
          <span class="description">{{description}}</span>
          </div>
          <div class="ansewer col-8 offset-2">
            <form>
              <div class="input-group input-group-lg mb-3">
              <span class="input-group-text">{{ruby_class_name}}#</span>
                <input autofocus="" class="form-control" tupe="text" />
                <button v-on:click="countUp" class="btn btn-outline-secondary" tupe="button">解答</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div></template>

<script>
export default {
  props: {
    description: { type: String, default: '' },
    ruby_class_name: { type: String, default: '' },
  },
  data: function () {
    return {
      message: "Vue!",
    }
  }
}
</script>
