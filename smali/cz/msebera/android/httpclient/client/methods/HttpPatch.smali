.class public Lcz/msebera/android/httpclient/client/methods/HttpPatch;
.super Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPatch.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "PATCH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;->setURI(Ljava/net/URI;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 61
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;->setURI(Ljava/net/URI;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "PATCH"

    return-object v0
.end method
