.class public Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
.super Ljava/lang/Object;
.source "GenericFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/GenericFormFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormContent"
.end annotation


# instance fields
.field private bottomButtonVisible:Z

.field private bottomHintText:Ljava/lang/String;

.field private bottomHintTextRes:I

.field private buttonBottomTextRes:I

.field private buttonTextRes:I

.field private buttonVisible:Z

.field private imageRes:I

.field private topHintTextRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1102d6

    .line 91
    iput v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonTextRes:I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonVisible:Z

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomButtonVisible:Z

    return-void
.end method


# virtual methods
.method public getBottomHintText()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomHintText:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomHintTextRes()I
    .locals 1

    .line 145
    iget v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomHintTextRes:I

    return v0
.end method

.method public getButtonBottomTextRes()I
    .locals 1

    .line 153
    iget v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonBottomTextRes:I

    return v0
.end method

.method public getButtonTextRes()I
    .locals 1

    .line 149
    iget v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonTextRes:I

    return v0
.end method

.method public getImageRes()I
    .locals 1

    .line 141
    iget v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->imageRes:I

    return v0
.end method

.method public getTopHintTextRes()I
    .locals 1

    .line 137
    iget v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->topHintTextRes:I

    return v0
.end method

.method public isBottomButtonVisible()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomButtonVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->getButtonBottomTextRes()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isButtonVisible()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonVisible:Z

    return v0
.end method

.method public setBottomButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomButtonVisible:Z

    return-object p0
.end method

.method public setBottomHintText(Ljava/lang/String;)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 169
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomHintText:Ljava/lang/String;

    return-object p0
.end method

.method public setBottomHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 112
    iput p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->bottomHintTextRes:I

    return-object p0
.end method

.method public setButtonBottomTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 127
    iput p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonBottomTextRes:I

    return-object p0
.end method

.method public setButtonTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 117
    iput p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonTextRes:I

    return-object p0
.end method

.method public setButtonVisible(Z)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 122
    iput-boolean p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->buttonVisible:Z

    return-object p0
.end method

.method public setImageRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 107
    iput p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->imageRes:I

    return-object p0
.end method

.method public setTopHintTextRes(I)Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;
    .locals 0

    .line 102
    iput p1, p0, Lru/rocketbank/r2d2/registration/GenericFormFragment$FormContent;->topHintTextRes:I

    return-object p0
.end method
