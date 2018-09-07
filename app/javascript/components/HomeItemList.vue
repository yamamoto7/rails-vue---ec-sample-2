<template>
	<div>
		<div>{{ title }}</div>
		<item-el
			v-for="item in items"
      :key="item.id"
			:id = item.id
			:title = item.title
			:body = item.body
		></item-el>
		<div><router-link :to="{ name: 'specialsShow', params: { id: id }}">もっとみる</router-link></div>
	</div>
</template>

<script type="text/javascript">
import ItemEl from './ItemEl.vue';
import axios from 'axios';

export default {
	props: ['id', 'title'],
  data() {
    return {
      items: null,
    }
  },
  mounted() {
    axios.get(`/api/specials/home/${this.id}.json`).then(response => (this.items = response.data.items))
  },
  methods: {
  },
  components: {
    ItemEl,
  },
};
</script>
