.class public Lru/rocketbank/core/nfc/NfcTag;
.super Ljava/lang/Object;
.source "NfcTag.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/nfc/NfcTag$Companion;
    }
.end annotation


# static fields
.field private static final CARD_NFC_TAG_ADF:I = 0x4f

.field private static final CARD_NFC_TAG_APP_LABEL:I = 0x4f

.field private static final CARD_NFC_TAG_IIN:I = 0x42

.field public static final Companion:Lru/rocketbank/core/nfc/NfcTag$Companion;


# instance fields
.field private final size:I

.field private final tagBody:[B

.field private final tagType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/nfc/NfcTag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/nfc/NfcTag$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/nfc/NfcTag;->Companion:Lru/rocketbank/core/nfc/NfcTag$Companion;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const-string v0, "tagBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/nfc/NfcTag;->tagType:I

    iput p2, p0, Lru/rocketbank/core/nfc/NfcTag;->size:I

    iput-object p3, p0, Lru/rocketbank/core/nfc/NfcTag;->tagBody:[B

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    .line 4
    iget v0, p0, Lru/rocketbank/core/nfc/NfcTag;->size:I

    return v0
.end method

.method public final getTagBody()[B
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/nfc/NfcTag;->tagBody:[B

    return-object v0
.end method
