<template>
  <div>
    <item-el
      v-for="item in items"
      :key="item.id"
      :id = item.id
      :title = item.title
      :body = item.body
    ></item-el>
  </div>
</template>

<script type="text/javascript">
import ItemEl from './ItemEl.vue';
import axios from 'axios';

export default {
  data() {
    return {
      items: null,
    }
  },
  mounted() {
    axios.get(`/api/categories/${this.$route.params.id}.json`).then(response => (this.items = response.data.items))
  },
  methods: {
  },
  components: {
    ItemEl,
  },
};

</script>
