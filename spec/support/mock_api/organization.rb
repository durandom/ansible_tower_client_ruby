module AnsibleTowerClient
  class MockApi
    module Organization
      def self.collection
        [
          {
            "id"             => 3,
            "type"           => "organization",
            "url"            => "/api/v1/organizations/3/",
            "related"        => {
              "created_by"                     => "/api/v1/users/1/",
              "modified_by"                    => "/api/v1/users/1/",
              "notification_templates_error"   => "/api/v1/organizations/3/notification_templates_error/",
              "notification_templates_success" => "/api/v1/organizations/3/notification_templates_success/",
              "users"                          => "/api/v1/organizations/3/users/",
              "object_roles"                   => "/api/v1/organizations/3/object_roles/",
              "notification_templates_any"     => "/api/v1/organizations/3/notification_templates_any/",
              "teams"                          => "/api/v1/organizations/3/teams/",
              "access_list"                    => "/api/v1/organizations/3/access_list/",
              "notification_templates"         => "/api/v1/organizations/3/notification_templates/",
              "admins"                         => "/api/v1/organizations/3/admins/",
              "credentials"                    => "/api/v1/organizations/3/credentials/",
              "inventories"                    => "/api/v1/organizations/3/inventories/",
              "activity_stream"                => "/api/v1/organizations/3/activity_stream/",
              "projects"                       => "/api/v1/organizations/3/projects/"
            },
            "summary_fields" => {
              "created_by"           => {
                "id"         => 1,
                "username"   => "admin",
                "first_name" => "",
                "last_name"  => ""
              },
              "modified_by"          => {
                "id"         => 1,
                "username"   => "admin",
                "first_name" => "",
                "last_name"  => ""
              },
              "object_roles"         => {
                "auditor_role" => {
                  "description" => "Can view all settings for the organization",
                  "id"          => 106,
                  "name"        => "Auditor"
                },
                "admin_role"   => {
                  "description" => "Can manage all aspects of the organization",
                  "id"          => 105,
                  "name"        => "Admin"
                },
                "member_role"  => {
                  "description" => "User is a member of the organization",
                  "id"          => 104,
                  "name"        => "Member"
                },
                "read_role"    => {
                  "description" => "May view settings for the organization",
                  "id"          => 103,
                  "name"        => "Read"
                }
              },
              "related_field_counts" => {
                "job_templates" => 3,
                "users"         => 1,
                "teams"         => 0,
                "admins"        => 0,
                "inventories"   => 2,
                "projects"      => 1
              }
            },
            "created"        => "2017-01-30T10:48:57.692Z",
            "modified"       => "2017-01-30T10:48:57.692Z",
            "name"           => "ACME Corp",
            "description"    => "The Organization"
          }
        ]
      end

      def self.response
        {
          "count"    => collection.length,
          "next"     => nil,
          "previous" => nil,
          "results"  => collection
        }.to_json
      end
    end
  end
end
