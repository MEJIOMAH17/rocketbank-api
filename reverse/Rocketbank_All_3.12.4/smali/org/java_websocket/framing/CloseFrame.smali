.class public interface abstract Lorg/java_websocket/framing/CloseFrame;
.super Ljava/lang/Object;
.source "CloseFrame.java"

# interfaces
.implements Lorg/java_websocket/framing/Framedata;


# virtual methods
.method public abstract getCloseCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method
