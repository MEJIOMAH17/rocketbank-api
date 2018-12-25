.class Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
.super Ljava/lang/Object;
.source "GenericMigrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MigrationContent"
.end annotation


# instance fields
.field private bottomButtonVisible:Z

.field private bottomHintTextRes:I

.field private buttonBottomTextRes:I

.field private buttonTextRes:I

.field private buttonVisible:Z

.field private imageRes:I

.field private topHintTextRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonVisible:Z

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->bottomButtonVisible:Z

    return-void
.end method


# virtual methods
.method public getBottomHintTextRes()I
    .locals 1

    .line 147
    iget v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->bottomHintTextRes:I

    return v0
.end method

.method public getButtonBottomTextRes()I
    .locals 1

    .line 155
    iget v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonBottomTextRes:I

    return v0
.end method

.method public getButtonTextRes()I
    .locals 1

    .line 151
    iget v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonTextRes:I

    return v0
.end method

.method public getImageRes()I
    .locals 1

    .line 143
    iget v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->imageRes:I

    return v0
.end method

.method public getTopHintTextRes()I
    .locals 1

    .line 139
    iget v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->topHintTextRes:I

    return v0
.end method

.method public isBottomButtonVisible()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->bottomButtonVisible:Z

    return v0
.end method

.method public isButtonVisible()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonVisible:Z

    return v0
.end method

.method public setBottomButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 134
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->bottomButtonVisible:Z

    return-object p0
.end method

.method public setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 114
    iput p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->bottomHintTextRes:I

    return-object p0
.end method

.method public setButtonBottomTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 129
    iput p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonBottomTextRes:I

    return-object p0
.end method

.method public setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 119
    iput p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonTextRes:I

    return-object p0
.end method

.method public setButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 124
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->buttonVisible:Z

    return-object p0
.end method

.method public setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 109
    iput p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->imageRes:I

    return-object p0
.end method

.method public setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 0

    .line 104
    iput p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->topHintTextRes:I

    return-object p0
.end method
