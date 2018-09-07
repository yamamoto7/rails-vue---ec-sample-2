<template>
	<div>
		<div>{{ id }}/{{ title }}/{{ body }}/<router-link :to="{ name: 'itemShow', params: { id: id }}">詳細</router-link></div>
	</div>
</template>

<script type="text/javascript">
import axios from 'axios';

export default {
	props: ['id', 'title', 'body'],
  data() {
    return {
    }
  },
  mounted() {
  },
  methods: {
  },
  components: {
  },
};

</script>
