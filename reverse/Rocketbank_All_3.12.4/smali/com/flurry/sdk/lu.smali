.class public final Lcom/flurry/sdk/lu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/flurry/sdk/lu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/flurry/sdk/lu;

    invoke-direct {v0}, Lcom/flurry/sdk/lu;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lu;->a:Lcom/flurry/sdk/lu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;
    .locals 1

    .line 1037
    new-instance v0, Lcom/flurry/sdk/lv$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lv$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
