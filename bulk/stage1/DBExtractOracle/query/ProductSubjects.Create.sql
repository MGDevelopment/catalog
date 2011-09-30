CREATE TABLE DBE_ProductSubjects(
    ProductId               INTEGER NOT NULL,
    EntryOrder              INTEGER NOT NULL,
    SubjectId               INTEGER NOT NULL,
    FlagMainSubject         INTEGER NOT NULL,
    OriginalSubjectId       INTEGER NULL,
    PRIMARY KEY(ProductId, EntryOrder)
)