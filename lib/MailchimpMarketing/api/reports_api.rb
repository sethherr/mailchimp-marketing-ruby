=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.44
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # List campaign reports
    def get_all_campaign_reports(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "type", must be one of regular, plaintext, absplit, rss, variate' if opts[:'type'] && !['regular', 'plaintext', 'absplit', 'rss', 'variate'].include?(opts[:'type'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'before_send_time'] = opts[:'before_send_time'] if !opts[:'before_send_time'].nil?
      query_params[:'since_send_time'] = opts[:'since_send_time'] if !opts[:'since_send_time'].nil?
      post_body = nil

      local_var_path = '/reports'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign report
    def get_campaign_report(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List abuse reports
    def get_campaign_abuse_reports(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/abuse-reports'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get abuse report
    def get_campaign_abuse_report(campaign_id, report_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'report_id'" if report_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/abuse-reports/{report_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'report_id' + '}', report_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign feedback
    def get_campaign_advice(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/advice'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign details
    def get_campaign_click_details(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/click-details'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign link details
    def get_campaign_click_details_for_link(campaign_id, link_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'link_id'" if link_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/click-details/{link_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'link_id' + '}', link_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List clicked link subscribers
    def get_subscribers_info(campaign_id, link_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'link_id'" if link_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/click-details/{link_id}/members'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'link_id' + '}', link_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get clicked link subscriber
    def get_subscriber_info(campaign_id, link_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'link_id'" if link_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/click-details/{link_id}/members/{subscriber_hash}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'link_id' + '}', link_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List domain performance stats
    def get_domain_performance_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/domain-performance'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign product activity
    def get_ecommerce_product_activity_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "sort_field", must be one of title, total_revenue, total_purchased' if opts[:'sort_field'] && !['title', 'total_revenue', 'total_purchased'].include?(opts[:'sort_field'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/ecommerce-product-activity'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List EepURL activity
    def get_eepurl_activity_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/eepurl'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List email activity
    def get_email_activity_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/email-activity'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get subscriber email activity
    def get_email_activity_for_subscriber(campaign_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/email-activity/{subscriber_hash}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List top open activities
    def get_locations_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/locations'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign open details
    def get_campaign_open_details(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/open-details'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get opened campaign subscriber
    def get_subscriber_info_for_opened_campaign(campaign_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/open-details/{subscriber_hash}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign recipients
    def get_campaign_recipients(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/sent-to'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign recipient info
    def get_campaign_recipient(campaign_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/sent-to/{subscriber_hash}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List child campaign reports
    def get_sub_reports_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/sub-reports'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List unsubscribed members
    def get_unsubscribed_list_for_campaign(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/unsubscribed'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get unsubscribed member
    def get_unsubscribed_list_member(campaign_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/reports/{campaign_id}/unsubscribed/{subscriber_hash}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
