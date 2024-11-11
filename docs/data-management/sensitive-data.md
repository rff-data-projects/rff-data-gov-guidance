# Sensitive and Proprietary Data, Data Agreements

When using sensitive or proprietary data in your research project, it's crucial to ensure data security, privacy, and compliance with any agreements or regulations governing its use. There are five steps to addressing this.

## 1. Identify and categorize sensitive data.

Determine if any data used in your project is subject to data use agreements, or are otherwise sensitive or proprietary. 

* To determine whether any of your project data is sensitive, consider the following:
  * Was the data acquired through special means, such as a purchase, personal contact, subscription, or a data use agreement?
  * Does the data include:
    * Identifying information about individuals (e.g., names, addresses, personal records)?
    * Sensitive environmental information (e.g., locations of endangered species, private property soil samples)?
    * Sensitive infrastructure information (e.g., detailed electricity grid data)?
    * Sensitive economic information (e.g. trade data)
    * Information concerning sovereign tribal governments or vulnerable communities?
  * Did accessing the data require Institutional Review Board (IRB) approval or human subjects research training?
  * Did accessing the data require special security training?
  * Was the data collected via surveys, interviews, or focus groups?
* If the answer to any of these questions was Yes, classify the sensitivity of the data into one or more of three categories:
  * __Proprietary Data__ has been paid for or for which special access has been granted. This type of data is often owned by a third party and comes with specific use restrictions, such as licensing agreements or purchase conditions.
  * __Regulated Data__ is governed by specific regulations or laws, such as federal or state laws, Institutional Review Board (IRB) regulations, or other oversight requirements. This includes data that involves privacy concerns, such as personally identifiable information (PII) or data subject to HIPAA or GDPR compliance.
  * __Confidential Data__ is sensitive due to its content or potential impact if disclosed. This includes data on sensitive environmental information, sensitive infrastructure details, or vulnerable communities.

## 2. Document data sensitivity and restrictions.

* Document data sensitivity class and details in both the data management plan and a README file in the data folder. Include details about the data's source, use restrictions, and sensitivity.
* Keep Track of Data Agreements: Maintain organized and secure digital copies of all data use agreements, licenses, and contracts. These should be easily accessible to those managing the data.
* Check with data providers or experts for recommended security measures

## 3. Determine appropriate security and privacy measures.

* Contact IT to inform them of your data sensitivity and ask for guidance on ensuring the sensitive data is backed up and secure. Implement suitable security measures based on the sensitivity of the data. This may include storing sensitive data in read-only folders accessible only to authorized team members. It is important for IT to know ahead of time if data need to be deleted, so that backups can be managed.
* Ensure all current and prospective team members are aware of data use and sharing constraints. Include sensitivity documentation when sharing data with outside collaborators. 
* Do not version control sensitive data, only the code that processes it. Using version control on sensitive data makes it difficult to delete comprehensively.

## 4. Data Derivatives: Masking and Aggregation

* Data derivatives are transformed versions of original datasets, generated through processes such as aggregation, summarization, and integration with other data sources. If the raw data is subject to sensitivity restrictions, additional precautions may be necessary when sharing these derivatives.
* Example techniques are shown below. These are not always applicable and specific techniques vary case by case. Sometimes it’s necessary to match specific requirements for proprietary/licensed data, which might be different from those listed here.
  * __Statistical Disclosure Control__: Ensure that summary statistics or figures can't be reverse-engineered to re-create the sensitive data. Specific requirements might vary by data agreements.
  * __Generalization and Anonymization__: When developing derivatives from sensitive data, use generalization techniques to obscure sensitive details, such as aggregating location data into broader regions rather than showing exact points.
  * __Storage Considerations__: Ensure that any derived datasets are stored securely and in compliance with applicable data protection regulations. Implement access controls to restrict who can view or modify these datasets. 

## 5. Review before publication or sharing.

Revisit and review data sensitivity documentation and agreements prior to sharing or publishing derived data products (data, figures, results). Ensure the whole research team agrees that sharing would not violate data sensitivity agreements or security measures. If appropriate, check with the data provider or expert before moving forward with publication.
