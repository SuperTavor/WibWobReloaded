.class public Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final mListener:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;->mListener:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;->mListener:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;->mListener:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;

    invoke-interface {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;->receivedBroadcast()V

    :cond_0
    return-void
.end method
