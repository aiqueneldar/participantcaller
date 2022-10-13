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

type NotFound struct {
	// Error number of the error that occurred. HTTP 4xx code
	Errorid int32 `json:"errorid,omitempty"`
	// Error message for the error that occurred
	Errormsg string `json:"errormsg,omitempty"`
}
