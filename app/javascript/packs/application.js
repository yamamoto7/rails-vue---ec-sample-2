/* eslint no-console:0 */


import Vue from 'vue/dist/vue.esm';
// spa route
import VueRouter from 'vue-router'

// Import stylesheet pack
import '../src/application.scss';
// Import components
import HomeTop from '../components/HomeTop.vue';
import ShowItem from '../components/ShowItem.vue';
import NewItems from '../components/NewItems.vue';
import SpecialItems from '../components/SpecialItems.vue';
import CategoryItems from '../components/CategoryItems.vue';

Vue.use(VueRouter)
const Router = new VueRouter({
	// HTML5 history mode
  mode: 'history',
  routes: [
    // { path: '/work/:id', name: 'work', component: workitem },
    { path: '/', component: HomeTop },
    { path: '/items/news', component: NewItems },
    { path: '/items/:id', name: 'itemShow', component: ShowItem },
    { path: '/specials/:id', name: 'specialsShow', component: SpecialItems },
    { path: '/categories/:id', name: 'CategoryShow', component: CategoryItems },

  ],
})

const app = new Vue({
	router: Router,
  components: {
  	HomeTop,
  	ShowItem,
  	NewItems,
  	SpecialItems,
  },
});


app.$mount('#app');