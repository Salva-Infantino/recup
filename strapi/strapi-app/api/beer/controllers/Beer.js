'use strict';

/**
 * Beer.js controller
 *
 * @description: A set of functions called "actions" for managing `Beer`.
 */

module.exports = {

  /**
   * Retrieve beer records.
   *
   * @return {Object|Array}
   */

  find: async (ctx, next, { populate } = {}) => {
    if (ctx.query._q) {
      return strapi.services.beer.search(ctx.query);
    } else {
      return strapi.services.beer.fetchAll(ctx.query, populate);
    }
  },

  /**
   * Retrieve a beer record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.beer.fetch(ctx.params);
  },

  /**
   * Count beer records.
   *
   * @return {Number}
   */

  count: async (ctx, next, { populate } = {}) => {
    return strapi.services.beer.count(ctx.query, populate);
  },

  /**
   * Create a/an beer record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.beer.add(ctx.request.body);
  },

  /**
   * Update a/an beer record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.beer.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an beer record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.beer.remove(ctx.params);
  }
};
