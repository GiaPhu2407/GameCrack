'use client'
import { useEffect } from 'react';

const CozeChat = () => {
  useEffect(() => {
    const script = document.createElement('script');
    script.src = 'https://sf-cdn.coze.com/obj/unpkg-va/flow-platform/chat-app-sdk/0.1.0-beta.5/libs/oversea/index.js';
    script.async = true;
    
    script.onload = () => {
      new window.CozeWebSDK.WebChatClient({
        config: {
          bot_id: '7411745616465854471',
        },
        componentProps: {
          title: 'Coze',
        },
      });
    };

    document.body.appendChild(script);
  }, []);

  return <div id="coze-chat-container"></div>;
};

export default CozeChat;
