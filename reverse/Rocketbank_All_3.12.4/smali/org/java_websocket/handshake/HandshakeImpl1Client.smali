.class public final Lorg/java_websocket/handshake/HandshakeImpl1Client;
.super Lcom/google/maps/android/R$drawable;
.source "HandshakeImpl1Client.java"

# interfaces
.implements Lorg/java_websocket/handshake/ClientHandshake;


# instance fields
.field private resourceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/maps/android/R$drawable;-><init>()V

    const-string v0, "*"

    .line 4
    iput-object v0, p0, Lorg/java_websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/java_websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final setResourceDescriptor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "http resource descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    return-void
.end method
