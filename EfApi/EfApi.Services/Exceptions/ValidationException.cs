using EfApi.Models.Validation;

namespace EfApi.Services.Exceptions;
public class ValidationException : Exception
{
    public ValidationException(ValidationResult result)
        : base(result.Message) { }
}