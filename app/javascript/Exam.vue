<template>
  <div class="position-relative">
    <div class="container">
      <div class="main justify-content-center d-flex align-items-center">
        <div class="row">
          <div class="description col-lg-8 offset-lg-2 col-12">
          <span class="description">{{description}}</span>
          </div>
          <div class="answer col-lg-6 offset-lg-3 col-8 offset-2">
            <form onsubmit="return false;">
              <div class="input-group input-group-lg mb-3">
              <span class="input-group-text">{{ruby_class_name}}#</span>
              <input autofocus="" class="form-control" tupe="text" />
              <button v-on:click="answered = true" class="btn btn-outline-secondary" tupe="button">解答</button>
              </div>
            </form>
          </div>
          <div class="correct-answer col-lg-6 offset-lg-3 col-8 offset-2" v-if="answered">
            <h3 style="display:inline;" v-if="answered" class="description">{{ruby_method_name}}</h3>
            <button v-on:click="" class="btn btn-outline-secondary" tupe="button">次の問題</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    description: { type: String, default: '' },
    ruby_class_name: { type: String, default: '' },
    ruby_method_name: { type: String, default: '' },
  },
  data: function () {
    return {
      message: "Vue!",
      answered: false
    }
  },
}
</script>

<style>
  .main{
    margin: 200px 0 50px 0;
  }
  .description{
    padding: 50px 0 50px 0;
  }
  /*.correct-answer{*/
  /*  position: absolute;*/
  /*  right: 0;*/
  /*  !*padding: 30px 0 30px 0;*!*/
  /*}*/
  /*.correct-answer h3{*/
  /*  padding: 0px 20px 0px 20px;*/
  /*}*/
</style>
