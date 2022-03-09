package validator_test

import (
	"testing"

	validator "github.com/mlenngren/iban-validator"
	"github.com/stretchr/testify/assert"
)

func TestValidateIban(t *testing.T) {
	validatedResult := validator.ValidateIban("BE71096123456769")
	assert.Equal(t, 1, validatedResult)
}
