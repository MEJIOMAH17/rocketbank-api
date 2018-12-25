.class public final Lcom/appsflyer/DebugLogQueue;
.super Ljava/lang/Object;
.source "DebugLogQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/DebugLogQueue$Item;
    }
.end annotation


# static fields
.field private static ourInstance:Lcom/appsflyer/DebugLogQueue;


# instance fields
.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/DebugLogQueue$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/appsflyer/DebugLogQueue;

    invoke-direct {v0}, Lcom/appsflyer/DebugLogQueue;-><init>()V

    sput-object v0, Lcom/appsflyer/DebugLogQueue;->ourInstance:Lcom/appsflyer/DebugLogQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/DebugLogQueue;->queue:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/DebugLogQueue;
    .locals 1

    .line 20
    sget-object v0, Lcom/appsflyer/DebugLogQueue;->ourInstance:Lcom/appsflyer/DebugLogQueue;

    return-object v0
.end method
