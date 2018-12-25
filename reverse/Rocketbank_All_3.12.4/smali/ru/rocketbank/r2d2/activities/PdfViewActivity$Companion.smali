.class public final Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;
.super Ljava/lang/Object;
.source "PdfViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/PdfViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfViewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfViewActivity.kt\nru/rocketbank/r2d2/activities/PdfViewActivity$Companion\n*L\n1#1,186:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;-><init>()V

    return-void
.end method

.method private static synthetic KEY_CX$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_CY$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_FILE$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_REVEAL$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic KEY_SHOW_SEND$annotations()V
    .locals 0

    return-void
.end method

.method public static bridge synthetic start$default(Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;Landroid/content/Context;ZLjava/lang/String;IIZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v1, p7, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, p4

    :goto_1
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 173
    invoke-virtual/range {v3 .. v9}, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;->start(Landroid/content/Context;ZLjava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;ZLjava/lang/String;IIZ)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/PdfViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-static {}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getKEY_REVEAL$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-static {}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getKEY_FILE$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getKEY_CX$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-static {}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getKEY_CY$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lru/rocketbank/r2d2/activities/PdfViewActivity;->access$getKEY_SHOW_SEND$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
