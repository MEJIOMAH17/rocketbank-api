.class public Lcom/appsflyer/AttributionIDNotReady;
.super Ljava/lang/Exception;
.source "AttributionIDNotReady.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Data was not received from server yet."

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
