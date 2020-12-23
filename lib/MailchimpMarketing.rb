=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.27
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'MailchimpMarketing/api_client'
require 'MailchimpMarketing/api_error'
require 'MailchimpMarketing/version'

# APIs
require 'MailchimpMarketing/api/activity_feed_api'
require 'MailchimpMarketing/api/authorized_apps_api'
require 'MailchimpMarketing/api/automations_api'
require 'MailchimpMarketing/api/batch_webhooks_api'
require 'MailchimpMarketing/api/batches_api'
require 'MailchimpMarketing/api/campaign_folders_api'
require 'MailchimpMarketing/api/campaigns_api'
require 'MailchimpMarketing/api/connected_sites_api'
require 'MailchimpMarketing/api/conversations_api'
require 'MailchimpMarketing/api/ecommerce_api'
require 'MailchimpMarketing/api/facebook_ads_api'
require 'MailchimpMarketing/api/file_manager_api'
require 'MailchimpMarketing/api/landing_pages_api'
require 'MailchimpMarketing/api/lists_api'
require 'MailchimpMarketing/api/ping_api'
require 'MailchimpMarketing/api/reporting_api'
require 'MailchimpMarketing/api/reports_api'
require 'MailchimpMarketing/api/root_api'
require 'MailchimpMarketing/api/search_campaigns_api'
require 'MailchimpMarketing/api/search_members_api'
require 'MailchimpMarketing/api/template_folders_api'
require 'MailchimpMarketing/api/templates_api'
require 'MailchimpMarketing/api/verified_domains_api'

module MailchimpMarketing
  class Client
    def initialize(config = {})
      @api_client = ApiClient.new(config)

      @ActivityFeed = ActivityFeedApi.new(@api_client)
      @AuthorizedApps = AuthorizedAppsApi.new(@api_client)
      @Automations = AutomationsApi.new(@api_client)
      @BatchWebhooks = BatchWebhooksApi.new(@api_client)
      @Batches = BatchesApi.new(@api_client)
      @CampaignFolders = CampaignFoldersApi.new(@api_client)
      @Campaigns = CampaignsApi.new(@api_client)
      @ConnectedSites = ConnectedSitesApi.new(@api_client)
      @Conversations = ConversationsApi.new(@api_client)
      @Ecommerce = EcommerceApi.new(@api_client)
      @FacebookAds = FacebookAdsApi.new(@api_client)
      @FileManager = FileManagerApi.new(@api_client)
      @LandingPages = LandingPagesApi.new(@api_client)
      @Lists = ListsApi.new(@api_client)
      @Ping = PingApi.new(@api_client)
      @Reporting = ReportingApi.new(@api_client)
      @Reports = ReportsApi.new(@api_client)
      @Root = RootApi.new(@api_client)
      @SearchCampaigns = SearchCampaignsApi.new(@api_client)
      @SearchMembers = SearchMembersApi.new(@api_client)
      @TemplateFolders = TemplateFoldersApi.new(@api_client)
      @Templates = TemplatesApi.new(@api_client)
      @VerifiedDomains = VerifiedDomainsApi.new(@api_client)
    end

    def set_config(config = {})
      @api_client.set_config(config)
    end

      def activityFeed
        @ActivityFeed
      end
      def authorizedApps
        @AuthorizedApps
      end
      def automations
        @Automations
      end
      def batchWebhooks
        @BatchWebhooks
      end
      def batches
        @Batches
      end
      def campaignFolders
        @CampaignFolders
      end
      def campaigns
        @Campaigns
      end
      def connectedSites
        @ConnectedSites
      end
      def conversations
        @Conversations
      end
      def ecommerce
        @Ecommerce
      end
      def facebookAds
        @FacebookAds
      end
      def fileManager
        @FileManager
      end
      def landingPages
        @LandingPages
      end
      def lists
        @Lists
      end
      def ping
        @Ping
      end
      def reporting
        @Reporting
      end
      def reports
        @Reports
      end
      def root
        @Root
      end
      def searchCampaigns
        @SearchCampaigns
      end
      def searchMembers
        @SearchMembers
      end
      def templateFolders
        @TemplateFolders
      end
      def templates
        @Templates
      end
      def verifiedDomains
        @VerifiedDomains
      end
  end
end
