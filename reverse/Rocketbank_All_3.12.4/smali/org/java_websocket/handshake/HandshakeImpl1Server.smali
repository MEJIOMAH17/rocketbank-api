.class public final Lorg/java_websocket/handshake/HandshakeImpl1Server;
.super Lcom/google/maps/android/R$drawable;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lorg/java_websocket/handshake/ServerHandshake;


# instance fields
.field private httpstatus:S

.field private httpstatusmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/maps/android/R$drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHttpStatusMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/java_websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setHttpStatus(S)V
    .locals 0

    .line 25
    iput-short p1, p0, Lorg/java_websocket/handshake/HandshakeImpl1Server;->httpstatus:S

    return-void
.end method

.method public final setHttpStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/java_websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    return-void
.end method
