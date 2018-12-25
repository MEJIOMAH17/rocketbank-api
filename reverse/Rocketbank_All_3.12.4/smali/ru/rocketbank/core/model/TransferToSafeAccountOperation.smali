.class public final Lru/rocketbank/core/model/TransferToSafeAccountOperation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "TransferToSafeAccountOperation.kt"


# instance fields
.field private buttonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_text"
    .end annotation
.end field

.field private documentButtonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_button_text"
    .end annotation
.end field

.field private documentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_url"
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->text:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentUrl:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentButtonText:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDocumentButtonText()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDocumentUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentButtonText:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->documentUrl:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->text:Ljava/lang/String;

    return-void
.end method
