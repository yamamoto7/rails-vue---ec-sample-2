<template>
	<div>{{ $route.params.id }}/{{ this.item.title }}/{{ this.item.body }}/</div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      item: [],
    }
  },
  mounted() {
    axios.get(`/api/item/${this.$route.params.id}.json`).then(response => (this.item = response.data.item))
  },
  methods: {
  },
  components: {
  },
};

</script>