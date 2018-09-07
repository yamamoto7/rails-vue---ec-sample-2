<template>
	<div>
		<home-item-list
			v-for="special in specials"
      :key= "special.id"
			:id = special.id
			:title = special.title
		></home-item-list>
	</div>
</template>

<script>
import HomeItemList from './HomeItemList.vue';
import axios from 'axios';

export default {
  data() {
    return {
      specials: null,
    }
  },
  mounted() {
    axios.get('/api/specials/home.json').then(response => (this.specials = response.data.specials))
  },
  methods: {
  },
  components: {
    HomeItemList,
  },
};

</script>
