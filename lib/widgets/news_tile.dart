import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articleModel}) : super(key: key);
  final NewsModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              13,
            ),
            child: Image.network(
              articleModel.image ??
                  'https://www.shutterstock.com/image-photo/computer-error-message-on-screen-260nw-1703102707.jpg',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            articleModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            articleModel.description ??
                'Error Error Error Error Error Error Error Error Error',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
