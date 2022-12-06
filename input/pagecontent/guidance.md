### Guidance

#### How to prevent resources from being duplicated on error messages

In this API, we will use the principle of idempotency. Each interaction will be based on a business identifier for that interaction.

If you have sent an interaction to a server, there a two possibilities:

* You get an answer
    - If you get an error message as an answer, you can analyse what to do:
        * If it is a business error, you can send a new interaction with a new business identifier
        * If it is a technical and transient error, you can resend the same interaction with the same business identifier

* You do not get an answer
    - Resend the same interaction with the same business identifier. The receiving end will be able to see whether it has already handled the message



