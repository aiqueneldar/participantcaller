/*
 * ParticipantCaller API
 *
 * API for the app ParticipantCaller
 *
 * API version: 1.0.0
 * Contact: aiqueneldar@gmail.com
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type Entity struct {
	// UUID for the entity
	Id string `json:"id"`
	// Human readable name of the entity
	Name string `json:"name"`

	Roles []string `json:"roles"`

	Parents []string `json:"parents,omitempty"`

	Children []string `json:"children,omitempty"`
	// List of objects that have attributes associated with the entity
	Attributes []interface{} `json:"attributes,omitempty"`
}
